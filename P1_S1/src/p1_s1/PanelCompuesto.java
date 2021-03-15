
package p1_s1;

import java.awt.BorderLayout;
import java.util.Observable;
import javax.swing.JPanel;

/**
 * 
 * @author Raquel Molina Reche (GH: rmr00),
 * Pablo Jiménez Jiménez (GH: pablojj1808)
 */
public class PanelCompuesto extends Composite {
    
    private Componente mapa;
    private Componente cambiador;

    
    public PanelCompuesto(Ticket t) {
        super();
        initComponents();
        
        mapa = new MapaPrecios();
        cambiador = new CambiadorPrecio(t);
        
        panelmapa.add(mapa);
        panelCambiador.add(cambiador);
       
        //cp.setVisible(true);
        //mp.setVisible(true);
        
        this.hijos.add(cambiador);
        this.hijos.add(mapa);
        
        panelmapa.repaint();
        panelmapa.revalidate();
        
        this.repaint();
        this.revalidate();
        
        this.setVisible(true);
    }
    
    @Override
    public void update(Observable o, Object arg) {
        mapa.update(o, arg);
        cambiador.update(o, arg);
    }
    

    
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        panelmapa = new javax.swing.JPanel();
        panelCambiador = new javax.swing.JPanel();

        panelmapa.setLayout(new java.awt.BorderLayout());

        panelCambiador.setLayout(new java.awt.BorderLayout());

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(34, 34, 34)
                .addComponent(panelmapa, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 428, Short.MAX_VALUE)
                .addComponent(panelCambiador, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(66, 66, 66))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(41, 41, 41)
                        .addComponent(panelmapa, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(69, 69, 69)
                        .addComponent(panelCambiador, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(196, Short.MAX_VALUE))
        );
    }// </editor-fold>//GEN-END:initComponents


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JPanel panelCambiador;
    private javax.swing.JPanel panelmapa;
    // End of variables declaration//GEN-END:variables
}
