/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p1_s1;

import javax.swing.JFrame;

/**
 * 
 * @author Raquel Molina Reche (GH: rmr00),
 * Pablo Jiménez Jiménez (GH: pablojj1808)
 */
public class MainWindow extends javax.swing.JFrame {

    private Componente historial;
    private Componente pantalla;
    private Componente cambiador;
    private Componente mapa;
    private Componente panelCompuesto;
    
   
    
    public MainWindow(Ticket t, Componente historialPrecio,Componente pantallaPrecio, Componente panelCompuesto, Componente cambiadorPrecio,
                                                                    Componente mapa) {
        initComponents();
        this.setVisible(true);
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.setBounds(100, 100, 900, 900);
        
        this.historial = historialPrecio;
        this.pantalla = pantallaPrecio;
        this.cambiador = cambiadorPrecio;
        this.mapa = mapa;
        this.panelCompuesto = panelCompuesto;
        
        panelHistorial.add(historial);
        panelPantalla.add(pantalla);
        panelCambiador.add(cambiador);
        panelMapa.add(mapa);
        panelPanelCompuesto.add(panelCompuesto);
        
        this.repaint();
        this.revalidate();
    }

  
    
    
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        panelPanelCompuesto = new javax.swing.JPanel();
        panelHistorial = new javax.swing.JPanel();
        panelPantalla = new javax.swing.JPanel();
        panelCambiador = new javax.swing.JPanel();
        panelMapa = new javax.swing.JPanel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setMaximumSize(new java.awt.Dimension(1000, 500));
        getContentPane().setLayout(new java.awt.GridBagLayout());

        panelPanelCompuesto.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0), 4));
        panelPanelCompuesto.setLayout(new java.awt.BorderLayout());
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.NORTHWEST;
        gridBagConstraints.insets = new java.awt.Insets(14, 20, 190, 0);
        getContentPane().add(panelPanelCompuesto, gridBagConstraints);

        panelHistorial.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0), 4));
        panelHistorial.setLayout(new java.awt.BorderLayout());
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.NORTHWEST;
        gridBagConstraints.insets = new java.awt.Insets(45, 42, 0, 0);
        getContentPane().add(panelHistorial, gridBagConstraints);

        panelPantalla.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(0, 0, 0), 4, true));
        panelPantalla.setToolTipText("");
        panelPantalla.setLayout(new java.awt.BorderLayout());
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.NORTHWEST;
        gridBagConstraints.insets = new java.awt.Insets(45, 37, 0, 0);
        getContentPane().add(panelPantalla, gridBagConstraints);

        panelCambiador.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0), 4));
        panelCambiador.setLayout(new java.awt.BorderLayout());
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.NORTHWEST;
        gridBagConstraints.insets = new java.awt.Insets(45, 31, 0, 146);
        getContentPane().add(panelCambiador, gridBagConstraints);

        panelMapa.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0), 4));
        panelMapa.setLayout(new java.awt.BorderLayout());
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.NORTHWEST;
        gridBagConstraints.insets = new java.awt.Insets(14, 31, 0, 146);
        getContentPane().add(panelMapa, gridBagConstraints);

        pack();
    }// </editor-fold>//GEN-END:initComponents

   

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JPanel panelCambiador;
    private javax.swing.JPanel panelHistorial;
    private javax.swing.JPanel panelMapa;
    private javax.swing.JPanel panelPanelCompuesto;
    private javax.swing.JPanel panelPantalla;
    // End of variables declaration//GEN-END:variables
}
